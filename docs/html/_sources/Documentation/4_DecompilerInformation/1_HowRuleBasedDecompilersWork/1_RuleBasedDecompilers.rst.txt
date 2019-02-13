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
This page covers how rule-based decompilers work. For a quick overview of how decompilers work, refer to
https://en.wikipedia.org/wiki/Decompiler.

What is a Rule-Based Decompiler? Why Document How They Work?
============================================================
A rule-based decompiler is not actually a type of decompiler. The reason "rule-based" decompilers are being documented
is because if the rules to how decompiling are understood, than the LLVM can be manipulated so that when these rules
are invoked and source code is generated, the source code is more likely to be readable.

As far as I can tell, the "rules" are not really rules like

`if this opcode is lui and next opcode is addiu then return var = value` [1]

Data Flow Analysis
==================
Data Flow analysis is the primary section used from Cifuentes' work [1]. The largest sections within that chapter
are titles `Previous Work` which covers what little literature there is about data flow analysis in a decompiler there
was at the time; `Types of Optimizations` which covers how compiler/decompilers use various (de)optimizations to get
whatever the target is; `Global Data Flow Analysis` which covers things I haven't read about yet; `Code-improving
Optimizations` which covers the topics in `Types of Optimizations` in more detail; and finally `Further Data Type
Propogation` which does other fancy schmancy things.



Bibliography
============
[1] RizRiz, “Searching for a nice way to define rules for decompiler, need advice,” Stack Overflow. [Online]. Available:
        https://stackoverflow.com/questions/3331430/searching-for-a-nice-way-to-define-rules-for-decompiler-need-advice.
        [Accessed: 06-Feb-2019].
[2] C. Cifuentes, “Reverse compilation techniques,” thesis, 1994.




