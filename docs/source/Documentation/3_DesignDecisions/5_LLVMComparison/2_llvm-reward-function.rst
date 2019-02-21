LLVM Comparison for Tracking Decompiling Progress
**************************************************

The team needs to use the LLVM API to create a reward function that will judge how close we are to our goal of lifting
decompiled LLVM into commpiler generated unoptimized LLVM. Specifically, we will need to compare two LLVM functions,
one compiled by Clang to unoptimized LLVM and the other lifted by a decompiler to LLVM. This document outlines which
aspects of an LLVM program we might want to compare and how these can be quantified as a reward function. It is
important to note that as the team trains the RL agent, the reward function will need to be refined.

------------------------------------------------------------------------------------------------------------------------

What to compare?
    The team will be using the equivalency class method described in the RL part of the documentation to transform  the
    LLVM. This method is garanteed to retain the behavior of the program, so our reward function will not need to
    compare behavior.

    Additionally, we plan to decompile at a function by function level, so we will not have to worry about comparing
    whole programs.

    Instead, the team will focus on the LLVM classes for Functions, Basic Blocks, and Instructions. The LLVM
    Comparator function will provide good reference for comparison, although that class is used tocompare behavior.

    Possible attributes to compare include:

    - Number of instructions
    - Number of identical instructions
    - Number of instructions which are of the same type
    - Instruction operators and operands
    - Function return type
    - Function symbol table
    - Function control flow graph
    - Number of identical basic blocks

    The following sections describe how these metrics might be obtained and the weight the team might give them.

------------------------------------------------------------------------------------------------------------------------

Instruction level comparisons:
    The number of instructions, number of identical instructions and number of instructions of the same type are all
    easily obtained from the functions provided by the LLVM API. However, these might not provided the best
    information. Two functions can have the same behavior and the same instructions but still be internally very
    different. Two functions can have the same number of addition operators, for example, but have all or most of them
    used in different parts of the functions for two different reasons. And we are not likely to have many precisely
    identical instructions, which may lead us to an unjustly bad score if we base our reward off of the number of
    identical functions. Instead of looking for a high number of identical instructions, the reward function may
    determine the similarity of individual instructions, give individual instructions a similarity ranking, and then
    use those rankings to determine the similarity of the entire program. The meta data of an instruction,
    retrieved with the getMetadata function, can provide information like the instruction operators and operands.
    This data can be used to determine the similarity of an instruction.

    The comparison of instructions then becomes another important area to consider. What makes to instructions
    similar, and how can this be quantifiably measured? The measurements which we currently know are available to us
    include the type of instruction and the number and type of the instruction's operands. The LLVM Comparator
    class includes a function to compare instructions which may be a useful reference.

------------------------------------------------------------------------------------------------------------------------

Function