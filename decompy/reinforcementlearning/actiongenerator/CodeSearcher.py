from decompy.equivalencyclasses.tokenizers.Tokenizer import Tokenizer
from decompy.reinforcementlearning.action.SwapAction import SwapAction


class CodeSearcher:
    """
    Step 2.2 The CodeSearcher looks for all possible swaps which can be made using the Equivalency Classes.
    """

    def __init__(self, trie):
        """
        creates a new code searcher, which relies on the Trie.
        :param trie: the trie structure from the Equivalency Class
        :type: Trie
        """
        self.trie = trie

    def find_swaps(self, llvm_current_state):
        """
        Takes in the current llvm state and generates a list of swap actions on it.
        :param llvm_current_state: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<SwapAction>
        """
        swaps = []

        tokens = Tokenizer.tokenize(llvm_current_state, False)
        for starting_cursor in range(len(tokens)):
            identified = [(prefix, starting_cursor) for prefix in trie.prefixes(tokens[starting_cursor:])]

            for snippet, location in identified:
                for option in snippet.get_swaps():
                    swaps.append(SwapAction(option.render(), location))

        return swaps


if __name__ == "__main__":
    from decompy.equivalencyclasses.TrieGenerator import TrieGenerator
    trieGen = TrieGenerator()
    trie = trieGen.generates_trie()
    codesearcher = CodeSearcher(trie)

    m = '; ModuleID = \'example.cpp\'\nsource_filename = "example.cpp"\ntarget datalayout = ' \
        '"e-m:e-i64:64-f80:128-n8:16:32:64-S128"\ntarget triple = "x86_64-pc-linux-gnu"\n\n; Function Attrs: noinline ' \
        'nounwind optnone uwtable\ndefine dso_local i32 @_Z7examplei(i32) #0 {\n  %2 = alloca i32, align 4\n  %3 = ' \
        'alloca i32, align 4\n  store i32 %0, i32* %2, align 4\n  %4 = load i32, i32* %2, align 4\n  %5 = add nsw i32 ' \
        '%4, 3\n  store i32 %5, i32* %3, align 4\n  %6 = load i32, i32* %3, align 4\n  ret i32 %6\n}\n\nattributes #0 ' \
        '= { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" ' \
        '"disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-widt\nh"="0" ' \
        '"no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" ' \
        '"no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false\n" ' \
        '"no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,' \
        '+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false\n" }\n\n!llvm.module.flags = !{' \
        '!0}\n!llvm.ident = !{!1}\n\n!0 = !{i32 1, !"wchar_size", i32 4}\n!1 = !{!"clang version ' \
        '8.0.0-svn354892-1~exp1~20190226195658.47 (branches/release_80)"}\n '

    swaps = codesearcher.find_swaps(m)

    for swap in swaps:
        print(str(swap))
        print(swap.llvm)
        print()
