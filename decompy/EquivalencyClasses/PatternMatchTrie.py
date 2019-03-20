#from decompy.EquivalencyClasses.Tokenizers.Tokens.Token import Token


class PatternMatchTrie:
    class Node:
        def __init__(self, key, value, next):
            self.key = key
            self.value = value
            self.next = next

        def __str__(self):
            return "["+"".join([str(elem.key) + "," + str(elem.value) + ": " + str(elem) for elem in self.next])+"]"

    def __init__(self):
        self.root = PatternMatchTrie.Node("", "", [])

    def __setitem__(self, key, value):
        current = self.root.next
        last_set = None

        for token in key:
            if token in current:
                index = current.index(token)
                current = current[index].next
            else:
                last_set = PatternMatchTrie.Node(token, "", [])
                current.append(last_set)
                current = last_set.next

        last_set.value = value

    @staticmethod
    def __find(level, token):
        found = []
        for i in range(len(level)):
            if level[i].key == token:
                found.append(level[i])
        return found

    def prefixes(self, tokens):
        found = []
        matches_at = {tokens[i]: [] for i in range(len(tokens))}

        results = PatternMatchTrie.__find(self.root.next, tokens[0])
        matches_at[tokens[0]] = results

        for i in range(1, len(tokens)):
            for result in matches_at[tokens[i - 1]]:
                if result.value:
                    found.append(result.value)
                results = PatternMatchTrie.__find(result.next, tokens[i])
                matches_at[tokens[i]] += results

        #Token.reset_all()
        return found + [node.value for node in matches_at[tokens[-1]]]

    def __str__(self):
        return str(self.root)


if __name__ == "__main__":
    from decompy.EquivalencyClasses.Tokenizers.Tokens.VariableToken import VariableToken

    trie = PatternMatchTrie()
    a = VariableToken()
    b = VariableToken()

    trie[a, "+", a] = "test"
    trie[b, "+", b, "6"] = "test2"
    print("Trie:", trie)
    print("Prefixes:", trie.prefixes(["%7", "+", "%7", "6"]))
