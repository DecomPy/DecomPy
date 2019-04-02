llvm-mctoll
***********

First Impressions
    llvm-mctoll is a project that started very recently (more recent than our capstone project).
    It is a minor, open source project from Microsoft. It currently has two main contributors.
    From what I can tell from community resources (Slack channels, forums, GitHub chats, etc.)
    it appears that llvm-mctoll, while in a much less developped, more infintile period has
    garnished a good deal of interest (likely due to its backing from Microsoft). Because it is
    so new, it also is using the latest and greatest (the most recent llvm/clang releases, with
    none of the bad design choices that the other projects had to make as they evolved with llvm
    and clang).

--------------------------------------------------------------------------------------------

Building llvm-mctoll
    Building llvm-mctoll was quite a process. Doing so requires checking out the entire llvm
    project, then checking out llvm-mctoll and clang into the tools directory, and finally
    running a config and cmake on the entire llvm project. Building along takes around 4 hours.
    If this were required each time, I would say it is a prohibiting factor, however the binary
    that is produced runs fine in other similar architecures (i.e. we can all run the binary I
    produced in our ubuntu environments. From what I have read of other projects, checking out
    into the llvm tools folder seems to be common as well (though not all do it such as fcd).

--------------------------------------------------------------------------------------------

What is produced
    llvm-mctoll ran fine and produces a .ll file with minimal work. At first glance, it does
    appear quite different from the .ll file compiled by clang, even for simple programs such
    as

.. tabs::

    .. code-tab:: c

        int main() {
            return 0;
        }

    .. tab:: llvm-clang
        
        int main() {
        }

    .. tab:: llvm-mctoll
        
        int main() {
        }

