How Rule-Based Decompilers Work
##############################################################

:Authors and Last Update:
| YiZhuang Garrard, February 6, 2019
| ygarrar1@asu.edu

.. contents:: Table of Contents
:local:

-----------------------------------------------------------------------------------------------------------------

Overview
=========
This page covers how rule-based decompilers work. For a quick overview of how
decompilers work, refer to https://en.wikipedia.org/wiki/Decompiler.

What is a Rule-Based Decompiler? Why Document How They Work?
============================================================
A rule-based decompiler is not actually a type of decompiler. The reason
"rule-based" decompilers are being documented is because if the rules to how
decompiling are understood, than the LLVM can be manipulated so that when
these rules are invoked and source code is generated, the source code is more
likely to be readable.

As far as I can tell, the "rules" are not really rules like

`if this opcode is lui and next opcode is addiu then return var = value` [1]

Data Flow Analysis
==================
Data Flow analysis is the primary section used from Cifuentes' work [1]. The
largest sections within that chapter are titles `Previous Work` which covers
what little literature there is about data flow analysis in a decompiler there
was at the time; `Types of Optimizations` which covers how
compiler/decompilers use various (de)optimizations to get whatever the target
is; `Global Data Flow Analysis` which covers things I haven't read about
yet; `Code-improving Optimizations` which covers the topics in `Types of
Optimizations` in more detail; and finally `Further Data Type Propogation`
which does other fancy schmancy things.

Previous Work
-------------
The previous work cited by Cifuentes in regards to data flow analysis has to
do with the elimination of condition codes and elimination of redundant loads
and stores.

Eliminating condition codes is just what it sounds like: It eliminates
condition codes. Most condition codes are never reached in programs, so they
could be eliminated to reduce program size.

Eliminating redundant loads and stores means substituting assembly operands
together to reduce the number of instructions needed for loading and storing,
as well as something called expression condensation which does the same thing
in a different way.

The elimination of redundant loads and stores sounds like it might have the
largest impact in the decompiled intermediate code since the substitutions
and condensations make it difficult to figure out what the parameters and
returns of functions are.

Types of Optimizations
----------------------
This section presents code-improving transformations used by a **decompiler**
. The aim of these optimizations is to remove low-level language concepts and
introduce high-level concepts that involve more than two operands.

Dead-Register Elimination eliminates registers from code that is no longer used.

Dead-Condition Code Elimination removes condition codes that are never used.

Condition Code Propagation compresses the remaining conditions from
Dead-Condition Code Elimination into more compact higher-level instructions.

Register Arguments compresses multiple instructions that contain arguments
into a single high-level instructions.

Function Return Register(s) compress multiple instructions for returning
registers from a function into a single high-level instruction.

The rest of the section follows a similar pattern to the portion already
covered; multiple instructions that are part of the same subroutine are
combined into a single high-level instruction. This makes the code (slightly)
more readable to humans.

Conclusion of Cifuentes' Work
-----------------------------
I'm stopping here for now, since Rule Based Decompilers is a rather broad
term. I didn't find anything about specific rules decompilers use, but just
algorithms consolidate multiple instructions into fewer instructions.

Other Sources to Look At
========================
- 6.4, page 135 of [1]
- 6.5, page 141 of [1]
- 6-6, page 144 of [1]

Bibliography
============
[1] RizRiz, "Searching for a nice way to define rules for decompiler, need
advice," Stack Overflow. [Online]. Available: https://stackoverflow
.com/questions/3331430/searching-for-a-nice-way-to
-define-rules-for-decompiler-need-advice. [Accessed: 06-Feb-2019].

[2] C. Cifuentes, “Reverse compilation techniques,” thesis, 1994.



