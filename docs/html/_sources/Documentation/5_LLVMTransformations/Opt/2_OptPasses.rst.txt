Looking at opt Passes
*********************


The following summaries are based on the longer blog post by John Regehr
which can be found at `his site
<https://blog.regehr.org/archives/1603>`_

++++++++++++
-simplifycfg
++++++++++++

Simplifies the control flow graph of the code. This works by searching for
basic blocks of llvm which have a single predeccessor and merging them into
their predecesor. This prevents useless branching. It also merges branch
instructions produced from code like

::

    if(x) {
        if(y) {

and reduces them into the more simple

::

    if(x & y) {

This pass could be useful, but I am unsure of some of the implications. It
results in what is essentially dead code removal and I worry that in larger
contexts, conclusions drawn on smaller pieces of code might not apply.

+++++
-sroa
+++++

Stands for "Scalar replacement of aggregates". It's goal is to make optimizations
inteded to work for scalar values (single value variables) work for aggregates (for
example structs in C). This works by replacing occurences of these aggregates in favor
of each of its components.

I believe this pass would be useful for our goals.

++++++++++++
-instcombine
++++++++++++

Instruction combiner is literally a large collection of operations that searches
for redundent uses of operations. It sometimes performs more complex searches than
direct equivalency by "canonicalizing" the code. This essentially means that code
which may look different like

::

    x - 1
    x + -1

are recognized as the same by forcing all code to follow the same rules. IE, it temporarily
makes all subtractions addition of negatives.

I believe that this pass would have limited use since it is somewhat difficult to perform on small
operations, but do not thing it would be wholly unusefull.
