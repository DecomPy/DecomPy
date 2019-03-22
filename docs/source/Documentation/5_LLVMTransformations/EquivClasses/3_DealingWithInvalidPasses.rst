Dealing with Invalid Passes
***************************

One major problem with the idea of generating small snippets of equivalency classes
is that what is locally equivalent may not be what is globally equivalent. Essentially,
it comes down to two major choices (or a combination there of). We can either attempt
to manually determine which passes do not suffer from this "scope mismatch" or we can
defer this judgement to the RL agent in some way. Both have a number of advantages and
disadvantages which I will discuss here.

+++++++++++++++++++++++++++++++
Manual Selection of LLVM passes
+++++++++++++++++++++++++++++++

One major issue, sadly, is time. This task is daunting not only due to the highly technical
nature, but also due to the lack of documentations on llvm passes individually. In the end,
opt is not a tool designed to perform target transformations. It is a tool designed to perform
subsequent lists of optimizations which are sometimes heavily interdependent. Many of these
optimizations, while not resulting in "scope mismatch" themselves, may depend on passes which
do. While it is certainly possible to perform before and after analyis of each pass event still,
this provides another layer of complexity to an already difficult task. Even some passes which
seem innocent with the wrong context could easily result in incorrect swaps.

The major advantage on the other hand, is that the ML will be much easier if we can assume that
all operations perfomred by the ML agent are inherintly safe and we do not have to perform our
own checks to make sure of this.

+++++++++++++++++++++++++++++++
Deferred judgement to the Agent
+++++++++++++++++++++++++++++++

While this may save time in terms of research and manual selection, it will certainly create
issues in the ML. If the ML's operations cannot be assumed to be safe, we run the risk of
ruining the llvm code so that it cannot be further lifted into C code. 

One big advantage of this choice is that theoretically the code we write for training the ML
agent could just as easily work for a database where all of the swaps are contextually safe.
Essentially, we are just perfoming safety checks and giving the agent a heavy negative reward
and backrolling the code so it can continue. If this action happened with a better database,
it would just never deal with backrolling since no invalid operations happen. This of course,
means writing code that would never run had we done our investigation right, but even assuming
we do a decent job with our manual selection, this might be useful.
