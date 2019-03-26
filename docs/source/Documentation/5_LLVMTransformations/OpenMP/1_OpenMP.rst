Using OpenMP
************

Another option that the team could use to generate more sematic
equivalent versions for our equivalency class idea is to use openMP.
OpenMP is a C library inteded to allow the programmer to specify
certain compiler options. It is often used for threading optimizations
and gives hints to the compiler. There are other similar libraries
which provide more control that are less targeted towards threading
as well. For instance, I found a `powerpoint
<https://llvm.org/devmtg/2018-10/slides/Kruse-LoopTransforms.pdf>`_
which discusses using llvm for loop based optimizations. This would
be useful for generating semantic equivalences for loop unrolling and
similar actions.
