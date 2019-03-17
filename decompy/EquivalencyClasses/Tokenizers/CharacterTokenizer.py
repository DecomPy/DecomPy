from decompy.EquivalencyClasses.Snippet import Snippet
import subprocess


class CharacterTokenizer:

    @staticmethod
    def tokenize(data, is_snippet):
        """
        Takes in llvm and extracts tokens from it
        :param data: Snippet
        :param is_snippet: True if it is a Snippet (and will be treated only as a string) or a Module (and will be converted to LLVM for instruction extraction)
        :return: tuple of string tokens
        """

        # Extract instructions from decompiled Modules or Functions
        if not is_snippet:
            instruction_str = subprocess.run(args=['./' + sh_location, file_name])
        # Extract LLVM ASM IR from handwritten or otherwise generated snippets
        elif type(data) is Snippet:
            instruction_str = data.llvm
        # Didn't get appropriate data
        else:
            return False

        # Does the actual tokenizing
        instruction_str = instruction_str.split()
        token_list = []
        for token in instruction_str:
            if ',' in token:
                token_list.append(token.replace(',', ""))
                token_list.append(',')
            else:
                token_list.append(token)

        flat_token_list = []

        # Flatten list
        for i in token_list:
            if type(i) is list:
                for j in i:
                    flat_token_list.append(j)
            else:
                flat_token_list.append(i)

        return tuple(flat_token_list)


if __name__ == "__main__":
    s = Snippet(0, "%1 = alloca i32, align 4\n%2 = alloca i32, align 4", 0)
    print(CharacterTokenizer.tokenize(s, True))

    m = "; ModuleID = 'example.cpp'\nsource_filename = \"example.cpp\"\ntarget datalayout = \"e-m:e-i64:64-f80:128-n8:16:32:64-S128\"\ntarget triple = " \
        "\"x86_64-pc-linux-gnu\"\n\n; Function Attrs: noinline\nnounwind optnone uwtable\ndefine dso_local i32 @_Z7examplei(i32) #0 {\n %2 = alloca i32, " \
        "align 4\n %3 = alloca i32, align 4\n store i32 %0, i32* %2, align 4\n %4 = load i32, i32* %2, align 4\n %5 = add nsw i32 %4, 3\n store i32 %5, " \
        "i32* %3, align 4\n %6 = load i32, i32* %3, align 4\n ret i32 %6\n}\nattributes #0 = { noinline nounwind optnone uwtable " \
        "\"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"less-precise-fpmad\"=\"false\" " \
        "\"min-legal-vector-width\"=\"0\" \"no-frame-pointer-elim\"=\"true\" \"no-frame-pointer-elim-non-leaf\" \"no-infs-fp-math\"=\"false\" " \
        "\"no-jump-tables\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" " \
        "\"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" " \
        "\"use-soft-float\"=\"false\" }\n\n!llvm.module.flags = !{!0}\n!llvm.ident = !{!1}\n\n!0 = !{i32 1, !\"wchar_size\", i32 4}\n!1 = !{!\"clang version " \
        "8.0.0-svn354892-1~exp1~20190226195658.47 (branches/release_80)\"} "

    # print(CharacterTokenizer.tokenize(m, False))
