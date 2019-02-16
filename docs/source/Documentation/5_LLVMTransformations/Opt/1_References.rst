References
**********

`This page
<https://wiki.aalto.fi/pages/viewpage.action?pageId=65015299>`_
describes useful information on opt including examples of running it,
what passes ran during the example, and what they did. It will be usefull
for understanding opt passes.

`This page
<https://llvm.org/docs/Passes.html#dce-dead-code-elimination>`_
is LLVM's documentation on its list of passes. Of specific interest is the
section entitled "Transform Passes" which gives a (technical and confusing)
explanation of each of the passes which result in llvm transformation (as
opposed to passes which perform analysis, which actually still might be
useful for other things such as the heuristics for state analysis.
