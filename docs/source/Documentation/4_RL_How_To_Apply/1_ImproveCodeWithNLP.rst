Using RL to Improve Readability of Decompiled Code by Treating It Like Natural Languages
****************************************************************************************

A way to use RL to make decompiled code is to treat the resulting (unreadable)
source code as a language and readable source code as another language. The
training data would be the original source code and the source code that has
been compiled and decompiled. This method does not guarantee the semantics or
compilability of the resulting source code. Compilability can be resolved by
fixing the compilation errors, but semantics cannot. Even though semantics
are not preserved, it may still provide value to users of the decompiler by
making it easier to see what the original intention of different code
sections might have been.