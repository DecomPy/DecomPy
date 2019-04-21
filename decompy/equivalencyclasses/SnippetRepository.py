import os
import errno

import re

from decompy.equivalencyclasses.ResultSnippet import ResultSnippet
from decompy.equivalencyclasses.Snippet import Snippet
from decompy.equivalencyclasses.tokenizers.Tokenizer import Tokenizer
from decompy.equivalencyclasses.Operators import Operators
from decompy.equivalencyclasses.tokenizers.tokens.ResultsToken import ResultsToken


class SnippetRepository:
    """
    A repository design pattern of snippets.
    """
    def __init__(self, repo_path):
        self.llvm_path = ".ll"
        self.repo_path = repo_path

        self.commands = {
            "POSITIVE_INTEGERS": self.positive_integers,
            "NEGATIVE_INTEGERS": self.negative_integers,
            "SIGNED_INTEGERS": self.signed_integers,
            "SWAP": self.swap,
            "RESULTS": self.results
        }

    def get_snippets(self):
        """
        Gets the list of snippets that it has read in.
        this is only a sample for now!!!
        :return: snippets
        :rtype: list<Snippets>
        """
        unprocessed = self._read_snippets_from_file(self.repo_path)
        parsed = self._filter_meta_instructions(unprocessed)
        ready_to_assemble = self._run_meta_instructions(parsed)
        unconnected = self._snippet_assembler(ready_to_assemble)
        return unconnected

    def _snippet_assembler(self, ready):
        search_ready = list(zip(*ready))[0]
        snippets = []
        for id, parts, class_id in ready:
            if parts["swaps"]:
                s = Snippet(id, parts["code"], class_id,
                            positive_integer_consts=parts["positive_integer_consts"],
                            negative_integer_consts=parts["negative_integer_consts"],
                            signed_integer_consts=parts["signed_integer_consts"])

                for connection in parts["swaps"]:
                    try:
                        other_id, other_parts, other_class_id = ready[search_ready.index(connection)]
                    except ValueError:
                        raise ValueError("Error in snippet id: %s, no snippet matching %s" % (id, connection))
                    if "results" in other_parts:
                        results = {}
                        lookup_for_snippet = {}
                        lookup_for_snippet.update(s.positive_integer_dict)
                        lookup_for_snippet.update(s.negative_integer_dict)
                        lookup_for_snippet.update(s.signed_integer_dict)

                        for result in other_parts["results"]:
                            if len(result) < 2:
                                raise ValueError("Error in snippet id %s, invalid result token" % id)
                            if result[1] not in Operators:
                                raise ValueError("Error in snippet id %s, invalid operator" % id)

                            unprocessed = [Operators[result[1]]] + result[2:]
                            processed = []
                            for i in range(len(unprocessed)):
                                if callable(unprocessed[i]):
                                    processed.append(unprocessed[i])
                                elif unprocessed[i][0] == "C":
                                    processed.append(unprocessed[i][1:])
                                else:
                                    try:
                                        processed.append(lookup_for_snippet[unprocessed[i]])
                                    except KeyError:
                                        raise KeyError("Error in snippet id %s, variable not declared properly: %s" % (id, unprocessed[i]))
                            r = ResultsToken(processed)
                            lookup_for_snippet.update({result[0]: r})
                            results[result[0]] = r
                        t = ResultSnippet(other_id, other_parts["code"], other_class_id, results=results, variables=s.variable_dict,
                                          positive_integer_consts=s.positive_integer_consts,
                                          negative_integer_consts=s.negative_integer_consts,
                                          signed_integer_consts=s.signed_integer_consts,
                                          positive_integers=s.positive_integer_dict,
                                          negative_integers=s.negative_integer_dict,
                                          signed_integers=s.signed_integer_dict
                                          )
                        s.add_connection(t)
                    else:
                        t = Snippet(other_id, other_parts["code"], other_class_id)
                        s.add_connection(t)

                snippets.append(s)
        return snippets

    def results(self, args, building):
        if "results" not in building:
            building["results"] = []
        building["results"].append((re.split(r"\s*,\s*", args)))
        return building

    def swap(self, args, building):
        if "NONE" in args:
            building["swaps"] = None
        else:
            building["swaps"] = args.split(",")
        return building

    def signed_integers(self, args, building):
        building["signed_integer_consts"] = [str(int(val)) for val in args.split(",")]
        return building

    def negative_integers(self, args, building):
        building["negative_integer_consts"] = [str(int(val)) for val in args.split(",")]
        return building

    def positive_integers(self, args, building):
        building["positive_integer_consts"] = [str(int(val)) for val in args.split(",")]
        return building

    def _run_meta_instructions(self, parsed):
        ready_to_assemble = []
        for id, seperated, class_id in parsed:
            for instruction in seperated["meta"]:
                instruction_split = instruction.split("=")
                command = instruction_split[0]
                values = instruction_split[1]
                self.commands[command](values, seperated)
            ready_to_assemble.append((id, seperated, class_id))
        return ready_to_assemble

    def _filter_meta_instructions(self, unfiltered):
        parsed = []
        for id, text, class_id in unfiltered:
            seperated = {"meta": [], "code": "", "tokens": [],
                         "positive_integer_consts": [],
                         "negative_integer_consts": [],
                         "signed_integer_consts": [],
                         "swaps": None}
            for line in text.split("\n"):
                if line[:3] == "; $":
                    seperated["meta"].append(line[3:])
                else:
                    seperated["code"] += line + "\n"
            seperated["tokens"] = Tokenizer.tokenize(seperated["code"], True)
            parsed.append((id, seperated, class_id))
        return parsed

    def _read_snippets_from_file(self, file_path):
        """
        reads snippets from destinated file path, only gets .ll files.
        :param: file_path the file path to read from.
        :type: str
        :return:
        """
        snippets = []
        if file_path is None:
            # use our repo path instead
            file_path = self.repo_path

        try:
            file_path = pathlib.Path(file_path)
            file_path = str(file_path.resolve())
        except Exception as e:
            print(e)
            pass

        # check if it exists
        if file_path is None or not os.path.exists(file_path):
            # example output [Errno 2] No such file or directory: 'your file path'
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), file_path)

        # walk recursively in given folder
        for root, dirs, files in os.walk(file_path):
            try:
                # get data to construct new snippet object
                # id = folder name past the Snippet stuff + llvm class name
                # class id = folder name past the Snippet stuff
                # llvm = the string representation of LLVM from that file

                # search through the files
                for basename in files:
                    # only looking for llvm files
                    if basename.endswith(self.llvm_path):
                        # get info based off root file

                        folder = root.split('/')
                        folder = folder[len(folder) - 1]

                        # read in the content
                        with open(root + "/" + basename, "r") as llvm_str:
                            llvm = llvm_str.read()

                        # add snippet to
                        snippet = (folder + "/" + basename, llvm, folder)
                        snippets.append(snippet)

            except Exception as e:
                print("Error...", e)
                pass

        return snippets

    # look for unfiltered files and only want "Unfiltered" (or filt_path_name)


if __name__ == "__main__":
    import pathlib

    repo = SnippetRepository(pathlib.PurePath.joinpath(pathlib.PurePath(__file__).parent, "./Snippets"))
    s = repo.get_snippets()[0]
    # s.variable_dict["%2"] == "%1"
    # s.variable_dict["%3"] == "%5"
    # s.positive_integer_dict["4"] == 12
    # s.positive_integer_dict["5"] == 15
    #
    # print("Original:\n", s.get_meta_tokens(), sep="")
    # print()
    #
    # for i in s.get_unrendered_swaps():
    #     print("Unrendered:\n", str(i), sep="")
    #     print()
    #
    # for i in s.get_rendered_swaps():
    #     print("Rendered:\n", str(i), sep="")
