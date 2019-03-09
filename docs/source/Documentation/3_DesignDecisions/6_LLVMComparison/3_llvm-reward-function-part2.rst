Writing a Reward Function for LLVM Functiion Comparison
*******************************************************

Our goal is to write a function that compares two LLVM Functions on an instruction-by-instruction level. One
possibility is to use an algorithm similar to the functionality of the "diff" in Git, but instead of comparing
characters or line,we compare whole instructions. This section outlines this method and any other possibilities
discovered through our research.

------------------------------------------------------------------------------------------------------------------------

The Myer's Difference Algorithm:
    Git uses the Myer's Diff Algorithm by default for calculating dif. This algorithm is fairly simple and well
    documented, and will suit our needs as well as the other algorithms that Git optionally can use. The algorithm
    uses graph search to find the shortest edit script by modeling the problem as a graph. A detailed explanation
    can be found here: https://blog.jcoglan.com/2017/02/12/the-myers-diff-algorithm-part-1/
    We can quantify the similarity of two functions by counting the number of instructions that are not changed
    according to diff. This algorthm will also show us which instructions are different, which allows for more checks
    to see if these instructions are somewhat similar. Then a negative reward can be given for differences, or a
    positive reward for similarities. Our project can use the Myer's algorithm, but instead of comparing line by line
    the way "dif" does, we will compare instruction by instruction.

------------------------------------------------------------------------------------------------------------------------

Instruction level comparisons:
    The method outlined above requires a function to discover the similarity between instructions. This will
    not only check for equality, but also quantify similarity, which will be useful for our secondary check to check
    for any other similarities.
    The "isIdenticalTo" function within the LLVM Instruction class is not appropriate for this purpose because this
    check for litterally the exact same instruction, meaning inside the same function an module. It will be useful to
    check out how this function works though, as we may draw inspiration from it.
    We will also need to figure out how to deal with variables. One option is to simply ignore them, that is, check
    for sameness in every other aspect of the instructions. This may lead to false positives. We cannot "normalize"
    the variables in each function because they may be too different for normalization to work. Wemay be able to
    perform analysis to discover which variables are "the same," but this may be too complex for out timeline. The
    suggestion is to ignore variables.

------------------------------------------------------------------------------------------------------------------------


