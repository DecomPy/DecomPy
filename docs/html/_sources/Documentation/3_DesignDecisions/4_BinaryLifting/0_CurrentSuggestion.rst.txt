Current Suggestion
******************

+++++++++++++++++++++++
Suggestion for the team
+++++++++++++++++++++++

Overall, I believe that using an existing decompiler for the full
process rather than using an llvm-lifter paired with another C
lifter is a much better option. There are too many versions
of llvm that act too differently from the previous version. Choosing
an llvm lifter and a c lifter that happen to work together is unlikely
if not impossible unless they were intended to work together.
Getting them to work together is certainly not impossible, but
likely out of reach for the scope of this project with the time
that we have.

+++++++++++++++++++++
Best Option Available
+++++++++++++++++++++

Out of the options that I have built so far, I believe llvm-mctoll
is the best fit to our current vision of the project and would be
the easiest to integrate. That being said, if the sponsor agrees,
I believe that integrating with fcd (or fcd+remill) would accelerate
our progress quite a bit and that it would much better prove our
original aim. The largest issue that fcd is facing, for example,
is exactly the issue that we are trying to fix.

The below is an excerpt from fcd's github.io page which describes
the main issue with fcd.

Another problem is that some conditions can become quite obtuse: for instance, jg (“jump if greater than”) tests that the zero flag isn’t set and that the sign flag is equal to the overflow flag. The instruction is usually used after cmp or sub, but because of the code they use to set flags, without post-processing, conditions would usually end up looking like:

::

    c = b - a;
    if (c != 0 && (c & 9223372036854775808) == (((b ^ c) & (b ^ a) & 9223372036854775808)))

which is arguably less readable than:

::

    if (b > a)

There is post-processing code to make it look prettier, and it often works, but the current output is still often not ideal.
Other problems have relatively simple solutions that have simply not been implemented yet.
