Searching for Snippets: Tries and Tokenization
**************************************************

The actions that the RL Agent will take will be to swap out small snippets (of the code being decompiled0 with
snippets that are different, but produce the same behavior. We will have a collection of snippets, and everytime an
action is taken we will search the code for a possible swap. We plan on tokenizing the snippets and creating a trie
which we will use to search the code. This document outlines the general plan for this, as well as the specific
approach we will take.

------------------------------------------------------------------------------------------------------------------------

The Search Algorithm:
    A trie is especially good at prefix matching. For example: For a trie containing the words "mat", "match", and
    "matching" as keys, a prefix search on "match" would return the values at "mat" and "match". We will use this to
    search for snippets.
    The algorithm for our search uses this as follows:
        - Perform prefix search on the trie, using all of the code starting at the first line
            - The code starting from this line will need to be normalized so that variable names match
        - Any snippets that are found are added to a snippet list
        - Repeat, starting the prefix search from the next line
    This process is repeated whenever we need to search for snippets from our snippet repository.

------------------------------------------------------------------------------------------------------------------------

Trie:


------------------------------------------------------------------------------------------------------------------------

Tokenizer
