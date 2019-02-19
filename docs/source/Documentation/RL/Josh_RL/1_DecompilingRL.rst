Motivation for RL
===================
The initial thought was to use a NN to translate the object file to an optimized LLVM. However, due to
problems with the "rules" of decompilers (they don't really exist), this is essentially an impossible approach.
We cannot treat it as if it were a foreign language.

Decompiling RL
===================
When using RL the reward function would have to be on how well it has decompiled/translated the code from unoptimized
LLVM to optimized LLVM, producing more readable C. This could be over 100s of iterations or 1000s.
The RL's domain is clearly the C language, which is an abundant of directions to take. However, with these directions,
to generate the best looking C code that matches the original, we would need to essentially create snippets of code either
by section, function call, lines of code or some other measure. The lines of code could then undergo some of Clang's optimizations
such as speed, memory management, etc., store that into a database and let the RL learn off of that. The RL would then try to
piece it together using several thousands of those combinations to produce the most accurate result (that can compile) and looks the same.
The similarity may either be from a levenshtein distance or Dice's Coefficient. Now, back to the snippets of code, these would be stored into a database
with each section demarking what Clang has done to it. The code would be generated from the gathered code, and the RL model
would use that code whenever it sees fit. I believe one of the better methods to implement this would be a Monte Carlo (MC) Approach.
For more information see https://github.com/omerbsezer/Reinforcement_learning_tutorial_with_demo#whatisRL . Essentially, MC
learns directly from episodes of experience, has no knowledge of transition/rewards, and uses the simple idea of value = return.