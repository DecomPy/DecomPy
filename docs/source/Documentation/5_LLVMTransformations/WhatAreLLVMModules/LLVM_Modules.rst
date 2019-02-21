What Are LLVM Modules?
**********************

**Introduction**

LLVM programs are composed of Modules, each of which is a translation unit of
the input program. A translation unit is a single source file (e.g. ``file
.c``) after preprocessing (all ``#include``\s are expanded, all macros are
expanded, all comments are removed, and the file is ready for tokenizing).
Basically, it is something that is compilable without external dependencies
until the linking step. [1]

Each module consists of functions, global variables, and symbol table entries
.[2]


Bibliography
------------
[1] YakovYakov, "LLVM translation unit,"Stack Overflow. [Online]. Available:
https://stackoverflow.com/questions/7146425/llvm-translation-unit. [Accessed:
18-Feb-2019].

[2] "LLVM Language Reference Manual," The LLVM Target-Independent Code
Generator - LLVM 8 documentation. [Online].
Available: https://llvm.org/docs/LangRef.html. [Accessed: 18-Feb-2019].

[3] "Clang 9 documentation," Clang C Language Family Frontend for LLVM.
[Online]. Available: https://clang.llvm.org/docs/Modules.html. [Accessed:
18-Feb-2019].

[4]"LLVM for Grad Students," Object Recognition. [Online]. Available:
https://www.cs.cornell.edu/~asampson/blog/llvm.html. [Accessed: 18-Feb-2019].