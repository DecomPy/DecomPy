How to Use Decompy's Syntax
***************************

One part of decompy's design that was critical for being able to perform swaps
for snippets was the normalization and pattern matching features. Since normalization
happens automatically and is a subset of pattern matching I will simply say pattern
matching for the rest of this document.

Pattern Matching in decompy is described inline in the snippet declarations as "llvm
comments" at the top of the code. The llvm in snippets is perfectly valid llvm which
can be parsed by the llvm API. The comments specify what to do to tokenize it and match
irrelevant data. For example, if the code has a number hard coded in, but that number
is not needed for the snippet to make the swap (only the fact that it stays the same)
then you could specify:

::

    ; $POSITIVE_INTEGERS=4

where 4 is that number. You can arbitrarily match any sentinal value, so if there are
other number that actually MUST be there (i.e. an alloca align 4, where the 4 can't
change) you can change the sentinal to any other number, as long as python can read
it in (python can read in really large ints....).

Every command in the swapping mechanism must begin appear at the start of the code
and be prefixed with "; $" to indicate that it is a command. Other comments SHOULD
be allowed (they are not extensively tested in the middle of commands at this time).
The commands available are as follows:

::

    ; $SWAP=
    ; $POSTIVE_INTEGERS=
    ; $RESULTS=

All commands are case sensitive and are all capital letters.

SWAP must appear first and follow one of the two following syntaxes:
1. ; $SWAP=NONE
2. ; $SWAP=Folder/file.ll,Folder/file2.ll

In otherwords, either a snippet which cannot be swapped which is explicitly specified
using NONE, or a snippet which can be swapped using the ID's which are generated for
each snippet consisting currently of the path to the file starting at the root path
of the folder initialized in the SnippetRepo object.

POSITIVE_INTEGERS takes in a list of all of the integers that should be variablized.
Any of the listed numbers will afterward match a single integer of any value. If a number
was used twice, then both result will only match the SAME number. In other words, you 
can specify a snippet which has multiple occurences of the same number by simply using
that number twice in the code and adding it as an POSITIVE_INTEGER. POSTIVE_INTEGER
takes in a comma seperated list of integers. Spaces SHOULD be supported but are advised
against at this time. (It is not well tested).

The last an most complicated command is $RESULTS. Unlike the other commands, it is
allowed to specify more than one result. The result must take the form:

::

    ; $RESULTS=Value, OPERATOR, Int,Int

Where Value is the value to tokenize as a result object (meaning it will only match the 
value computed by the result), OPERATOR is an operator (as listed in operators.py, I will
talk more about this further down), and Int is a POSITIVE_INTEGER specified in the swap
that lead into this swap. RESULTS can be chained, meaning that further operators can be
applied to make more complicated expressions as needed.

In addition, there is one more syntax that is supported by the result operator. You can
specify instead of an Int from the previous snippet a value such as C12. This will use
the value "12" in the computation, regardless of the previous snippet. This is useful for
compiler specific optimizations on certain architectures which introduce hard coded values.
It is also useful for implementing operators which work on a single value. For example,
since the RESULT command works by applying the reduce command from python to the result of
a list, the operator ABS (absolute value) which takes in a single value is impossible to run.
To make it work, we can modify it to use the following lambda expression instead:

::

    lambda x, y: abs(x)

The result of this is that every value except the first in the list will be tossed out and the
only remaining value will be the absolute value of the first thing in the list. This means
we can now specifiy and absolute value result like follows:

::

    $ RESULTS=9, ABS, -9, C0


