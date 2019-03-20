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
    We originally planned to use the Trie library implemented by Google here: https://github.com/google/pygtrie.
    However, we require pattern matching to allow for flexible snippet search (ie, the variable names should have to
    match exactly). We will tokenize each snippet, creating either simple tokens, which are just strings, or pattern
    tokens, which match some pattern instead. This list of tokens will be used as the Key, while our Snippet object
    (which contains a snippet id, an equivalency class id, and the snippet string) will be the value. When we attempt
    to find snippets in a module, any values that must be compared with pattern matching will be filled in, ie, when
    we come across our first variable in the module and variable token in the trie, the varible token in the trie
    will be set to the variable from the module. The next time that token is encountered, it will hold that varible
    and only ever match that variable, until we restart the search.

    The form of search we will use is a prefix search, that is, find all values whose keys match some prefix of this
    search value. So if we have the keys "Foo" and "Foobar" and "FooBarBlah" the search "FooBarHello" will return
    "Foo" and "FooBar". The prefix search "steps" through the search value (or the search "path"), returning
    any value found along that path. When we do prefix search, our snippets are of course the keys in the trie and the module
    itself is the search value.

    Pygtrie does not natively support any "pattern matching" functionality, as it depends on dictionaries, which
    depend on hash functions. A hash function would not work with our pattern matching. We saw two possibilities for
    resolving this. The following is the method we chose to use, which involves us making our own trie:

        - TODO

    This method to solve the issue involves modifying pygtrie. We will not use this method, but it is described below:

        - First, define tokens as such: Either a token is a StringToken, whose hash is the string's hash and whose
          value is exact, or a token is a PatternToken, whose hash is a unique ID and whose value changes every time we
          search the trie.  PattonToken will have a bool value "assigned" as well.
        - As previously described, the trie will have a list of tokens as keys, and the snippet that those tokens
          represent as values.
        - The module will also be tokenized in the same way that the keys are tokenized.
        - We perform prefix search. With this method, each token in the module is a step in the search path, and each
          token in the key is a step to the value :

            - If the token from the search path is a String Token, perform the search as usual, meaning the way
              pygtrie already does it (use the built in "dict" method to get the next value in the path).
            - If the token from the search path is a Pattern Token whose "assigned" attribute is true, perform the
              search as usual
            - If the token from the search path is a Pattern Token whose "assigned" attribute is false, then we will
              not be able to use the dictionary get method to get the next value. We have to assign one of the
              appropriate PatternTokens from the trie to this PatternToken from the module.

                - Get all of the keys in the children of the current node (since we cannot use get on the children)
                - Get all of the keys which are unassigned PatternTokens. If there are no more unassigned pattern
                  tokens, the prefix search is over.
                - Get all of the PatternToken keys which match the pattern of the PatternToken we are looking for. If
                  there are none, the search is over
                - Any of the remaining PatternTokens might be the token that correctly matches our module
                  PatternToken, so we will have to try all of them. When we try each, we will:

                    - Set the module PatternToken's unique ID to that of the key PatternToken. Now the two wil hash
                      to each other. (NOTE: This is dangerous because hash functions should not be mutable! This is part
                      of why we are not using this method!)
                    - Continue the search as usual
                    - Once we reach the end of searching down this path, if there are no results, we repeat the process
                      with the next PatternToken. We must remember to set the old token's "assigned" attribute back to
                      false.




------------------------------------------------------------------------------------------------------------------------

Tokenizer:
    To allow for multiple types of tokenization, we will create tokenizer classes that each implement a "tokenize"
    method. A tokenizer will be a member of the trie, and the trie will call this tokenizer to generate the list of
    tokens to be used as a key for the snippet.

    The initial tokenizer will just parse the string into a list of characters, but by using this design we will
    have the flexibility of having a more complex tokenizer and being able to use it without much change to the code.
    Other tokenizer options are listed below:
