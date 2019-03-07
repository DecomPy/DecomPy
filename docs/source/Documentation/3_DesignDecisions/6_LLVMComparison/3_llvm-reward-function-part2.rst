Writing a Reward Function for LLVM Functiion Comparison
*******************************************************

Our goal is to write a function that compares two LLVM Functions on an instruction-by-instruction level. One
possibility is to use an algorithm similar to the functionallity of the "diff" in Git, but insteadof comparing
characters or line,wecomparewhole instructions. This section outlines this method and any other possibilities
discovered throughour research.

------------------------------------------------------------------------------------------------------------------------

The Myer's Difference Algorithm:
    Git uses the Myer's Diff Algorithm by default for calculating dif. This algorithm is fairly simple and well
    documented, and will suit our needs as well as the other algorithms that Git optionally can use. The algorithm
    uses graph search to find the shortest edit script by modeling the problem as a graph. A detailed explanation
    can be found here: https://blog.jcoglan.com/2017/02/12/the-myers-diff-algorithm-part-1/
    We can quantify the similarity of two functions by counting the number of lines that are not changed according to
    diff. This algorthm will also show us which lines are different, which allows for more checks to see if these
    lines are somewhat similar. Then a negative reward canbe given for differences, or a positive reward for
    similarities.

------------------------------------------------------------------------------------------------------------------------

Instruction level comparisons:
    Our project can use the Myer's algorithm, but instead of comparing line by line, we will compare instruction by
    instruction. This requires a function to discover the similarity between instructions. This will not only check
    for equality, but also quantify similarity, which will be useful for our secondary check to check for any other
    similarities.
    The "isIdenticalTo" function within the LLVM Instruction class is not appropriate for this purpose because this
    check for litterally the exact same instruction, meaning inside the same function an module. It will be useful to
    check out how this function works though, as we may draw inspiration from it.
    We will also need to figure out how to deal with variables. One option is to simply ignore them, that is, check
    for sameness in every other aspect of the instructions. This may lead to false positives. We cannot "normalize"
    the variables in each function because they may be too different for normalization to work. Wemay be able to
    perform analysis to discover which variables are "the same," but this may be too complex for out timeline. The
    suggestion is to ignore variables.

------------------------------------------------------------------------------------------------------------------------


