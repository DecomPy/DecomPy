Tokenizing LLVM
**************************************************

**Motivation**

The reason LLVM needs to be tokenized is so those tokens can be used to generate a trie. The trie is used to figure out if sections of the decompiled code
match with any snippets that we create so that it is known that they can be swapped.

**Possible Methods**

There are two methods to tokenize LLVM: the first is the treat the LLVM textual assembly as strings, and the second is to build custom tokens out of the the
LLVM IR using the LLVM API.

**Advantages and Disadvantages of using String Manipulation**

*Advantages*

String manipulation is very easy to tokenize compared to trying to tokenize via the LLVM API. Typical delimitation rules are followed i.e. tokens are delimited
by delimiters such as whitespace, commas, braces, etc.

Creating the trie with strings is much more straightforward than using LLVM classes.

*Disadvantages*

I can't think of any disadvantages. Information will be lost with using string manipulation, but it won't be harmful unless that information is needed.

**Advantages and Disadvantages of using LLVM API**

*Advantages*

As much information about every aspect of every instruction can be preserved. For example, if a ``BinaryOperator`` is tokenized, it's ``ValueName``, both
``Operands``, the relations of each ``Operand`` with previous instructions. It may turn out that this information is needed, but I can't think of a use case
where this information is needed.

*Disadvantages*

Working with the LLVM API is very tedious, and it may be the case that every child of the *Value* class will need it's own code to tokenize, as there is no
built-in tokenizing code within LLVM.

**Current Plan of Action**

Currently, tokenizing will take place by normalizing all the variables from the start point onwards, then doing a token-by-token walk through the decompiled
code comparing it with the tree to find if there are matching snippets. We will use string manipulation because that is all that is needed effectively
tokenize.