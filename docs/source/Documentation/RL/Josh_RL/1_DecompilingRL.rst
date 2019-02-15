Motivation for RL
===================
The initial thought was to use a NN to translate the object file to an optimized LLVM. However, due to
problems with the "rules" of decompilers (they don't really exist), this is essentially an impossible approach.
We cannot treat it as if it were a foreign language.

Decompiling RL
===================
When using RL the reward function would have to be on how well it has decompiled/translated the code. This could be over
100s of iterations or 1000s. The RL's domain is clearly the C language, which is an abundant of directions to take.